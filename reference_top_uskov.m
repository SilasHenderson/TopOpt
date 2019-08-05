% This is a test of Vladmir Uskov's '99-line code' modification from Mathworks File Exchange.
% Changes to original script: windowing/housekeeping only

clear; clc; close all;  colormap(bone);

nelx     =  100;     nely  = 50;  eps0    = 1e-3;   nu = .3;    % Options
volfrac  =   .3;     rs    =  2;  eta     =   .2; 
nloop    =  100;     penal =  3;  etamax  =    1;                               

F        = sparse(2,1,-1,2*(1+nelx)*(1+nely),1);               
fixeddof = union(1:2:2*(nely+1), 2*(1+nelx)*(1+nely));          

nel      =  nelx*nely;                                          % Setup
nnodes   = (1+nelx)*(1+nely);     
ndof     = 2*nnodes;  
freedof  = setdiff(1:ndof, fixeddof);                    
nodenrs  = reshape(1:nnodes, 1 + nely, 1 + nelx);
edofVec  = reshape(2*nodenrs(1:end-1, 1:end-1)+1, [], 1);
edofMat  = repmat(edofVec,1,8) + ...
           repmat([0, 1, 2*nely + [2 3 0 1], -2, -1], nel, 1);    
iK       = reshape(kron(edofMat,ones(8,1))',[],1);
jK       = reshape(kron(edofMat,ones(1,8))',[],1);

U  = zeros(ndof,1);             x    = repmat(volfrac,nel,1);   % Other           
lm = 0;                         reta = (etamax/eta)^(1/nloop);  
                                                                % K0                         
a  = [12 3 -6 3 0 -6 -3 -3];    i1   = [1 2 3 8; 2 1 4 5; 3 4 1 7; 8 5 7 1];  
b  = [-4 3 -2 -9 4 2 -3 9];     i2   = [6 7 5 4; 7 6 8 3; 5 8 6 2; 4 3 2 6];
k  = (a+nu*b)/(24*(1-nu^2));    KE   = k([i1 i2; i2 i1]);    

for loop = 1:nloop                                              % Loop
	x = imgaussfilt(reshape(x,nely,nelx),rs);            	% -- filter	
    	x = x(:); y = x.^penal; y(y < eps0*volfrac) = 0;                    
                                                             	% -- solve
    	K    = sparse(iK,jK,KE(:)*y'); 	d         = diag(K);                           
	skip = find(d == 0);      	remain    = setdiff(freedof,skip);         
	K    = K(remain,remain);        U(remain) = (K+K')\F(remain)*2;            
    	ue   = U(edofMat);              ce        = max(0,y.*sum(ue*KE.*ue,2));     
	x    = x.*(ce.^eta);            xNew      = @(a) min(1,x*exp(a));
	
    	delta = @(a) sum(xNew(a))-volfrac*nel;                	% -- oc
    	lm    = fzero(delta,lm);
	x     = xNew(lm);              
    	eta   = min(etamax,eta*reta);               
	imagesc(reshape(1-x,nely,nelx));  drawnow;      	% -- draw
end
