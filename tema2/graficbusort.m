nr=[50000, 100000, 150000, 200000, 250000, 300000, 350000, 400000, 450000, 500000]
bus=[7.122, 29.784, 70.447, 130.955, 204.448, 302.888, 376.747, 506.829, 628.649, 823.623]
for k=1:10
    grid on
    plot(nr(k),bus(k),'o','MarkerFaceColor','y','markerSize',10)
    hold on
end
plot([nr(1) nr(2) nr(3) nr(4) nr(5) nr(6) nr(7) nr(8) nr(9) nr(10)], [bus(1) bus(2) bus(3) bus(4) bus(5) bus(6) bus(7) bus(8) bus(9) bus(10)], 'LineWidth', 2, 'Color', 'b');
xlabel('Numarul de elemente','FontSize',14,'FontWeight','bold','Color','b');
ylabel({'Timp de executare bubblesort','(in seconds)'},'FontSize',14,'FontWeight','bold','Color','b');