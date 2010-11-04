use strict;
use warnings;

package Dist::Zilla::Util::EmulatePhase::PrereqCollector;
#ABSTRACT: A dummy Dist::Zilla to fake a 'prereq' object on.

use Moose;
use Dist::Zilla::Prereqs;

has prereqs => (
  is => 'ro',
  isa => 'Dist::Zilla::Prereqs',
  init_arg => undef,
  default => sub { Dist::Zilla::Prereqs->new },
  handles => [ qw( register_prereqs )],
);

__PACKAGE__->meta->make_immutable;