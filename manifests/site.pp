node 'bwc-nimbus' {
  $cluster = 'storm1'
  include storm::nimbus
  include storm::ui
}

node /bwc-supervisor[1-9]/ {
  $cluster = 'storm1'
  include storm::supervisor
}

node /bwc-zookeeper[1-9]/ {
  include storm::zoo
}

