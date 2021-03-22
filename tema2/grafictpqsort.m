nr=[50000, 100000, 150000, 200000, 250000, 300000, 350000, 400000, 450000, 500000]
qs=[0.006, 0.015, 0.028, 0.030, 0.042, 0.052, 0.054, 0.065, 0.070, 0.079]
for k=1:10
    grid on
    plot(nr(k),qs(k),'o','MarkerFaceColor','g','markerSize',10)
    hold on
end
plot([nr(1) nr(2) nr(3) nr(4) nr(5) nr(6) nr(7) nr(8) nr(9) nr(10)], [qs(1) qs(2) qs(3) qs(4) qs(5) qs(6) qs(7) qs(8) qs(9) qs(10)], 'LineWidth', 2, 'Color', 'b');
xlabel('Numarul de elemente','FontSize',14,'FontWeight','bold','Color','b');
ylabel({'Timp de executare qsort','(in seconds)'},'FontSize',14,'FontWeight','bold','Color','b');