package SemanticWeb::Schema::LandmarksOrHistoricalBuildings;

# ABSTRACT: An historical landmark or building.

use Moo;

extends qw/ SemanticWeb::Schema::Place /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

An historical landmark or building.




=cut


around json_ld_type => sub { return 'LandmarksOrHistoricalBuildings' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Place>

=cut

1;
