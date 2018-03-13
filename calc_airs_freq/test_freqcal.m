t = datetime(2002,09,01):days(30):datetime(2016,01,01);
load airs_f
for i=1:length(t)
   ab_time(i,:) = get_ab_state(t(i));
   yoff = get_yoff(t(i));
   [f_lm,freq(i,:),m_lm,module] = gmodel(155.1325,yoff,ab_time(i,:));
end
figure;plot(t,f(600)-freq(:,600),'+-')
figure;plot(t,ab_time(:,600),'+-')

