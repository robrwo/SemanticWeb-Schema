package SemanticWeb::Schema::CityHall;

# ABSTRACT: A city hall.

use Moo;

extends qw/ SemanticWeb::Schema::GovernmentBuilding /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A city hall.




=cut


around json_ld_type => sub { return 'CityHall' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::GovernmentBuilding>

=cut

1;
