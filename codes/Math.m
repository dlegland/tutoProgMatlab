classdef Math < handle
%MATH  One-line description here, please.
%
%   Class Math
%
%   Example
%   Math
%
%   See also
%
%
% ------
% Author: David Legland
% e-mail: david.legland@grignon.inra.fr
% Created: 2011-08-10,    using Matlab 7.9.0.529 (R2009b)
% Copyright 2011 INRA - Cepia Software Platform.


%% Methods
methods (Static)
    function p = pi(tol)
    % calcule PI avec une precision donnee
        [n d] = rat(pi, tol);
        p = n/d;
    end
end % end methods

end % end classdef
