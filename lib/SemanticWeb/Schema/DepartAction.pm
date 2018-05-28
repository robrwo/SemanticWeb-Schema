package SemanticWeb::Schema::DepartAction;

# ABSTRACT: The act of departing from a place

use Moo;

extends qw/ SemanticWeb::Schema::MoveAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of departing from a place. An agent departs from an fromLocation
for a destination, optionally with participants.




=cut


around json_ld_type => sub { return 'DepartAction' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::MoveAction>

=cut

1;
