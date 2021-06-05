function plotPointCloud(in, out)
    plot3(in(:,1), in(:,2), in(:,3), '.r')
    plot3(out(:,1), out(:,2), out(:,3), '.g')
end