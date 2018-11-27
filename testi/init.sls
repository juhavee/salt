{% if "Windows" == grains["kernel"] %}
{%      set testifile = "C:\\Users\\Labra\\Desktop\\testi.txt" %}
{%      set testifile2 = "C:\\Users\\Labra\\Desktop\\testi2.txt" %}
{% else %}
{%      set testifile = "/home/vagrant/testi.txt" %}
{%      set testifile2 = "/home/vagrant/testi2.txt" %}
{% endif %}

{{ testifile }}:
  file.managed:
    - source: salt://testi/testi.txt

{{ testifile2 }}:
  file.managed:
    - source: salt://testi/testi2.txt
