package SemanticWeb::Schema::Reservoir;

# ABSTRACT: A reservoir of water

use Moo;

extends qw/ SemanticWeb::Schema::BodyOfWater /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A reservoir of water, typically an artificially created lake, like the Lake
Kariba reservoir.




=cut


around json_ld_type => sub { return 'Reservoir' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::BodyOfWater>

=cut

1;
