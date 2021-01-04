classdef Point2D < handle
%POINT2D demo class 
%   Detailed explanation goes here

properties
    % x-coordinate of this point
    x = 0; 
    % y-coordinate of this point
    y = 0;
end

methods
    function this = Point2D(varargin)
        % constructor
        
        % empty constructor, to allow construction of arrays
        if nargin == 0
            return;
        end
        
        % copy constructor, to allow 'p2 = Point2D(p1);'
        if isa(varargin{1}, 'Point2D')
            that = varargin{1};
            this.x = that.x;
            this.y = that.y;
            return;
        end
        
        % initialisation constructor
        if nargin == 2
            this.x = varargin{1};
            this.y = varargin{2};
            return;
        end
    end
end

methods
    function dist = distance(this, that)
        % compute the distance between two points
        dist = hypot(this.x - that.x, this.y - that.y);
    end
end

end

