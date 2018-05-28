package SemanticWeb::Schema::ArriveAction;

# ABSTRACT: The act of arriving at a place

use Moo;

extends qw/ SemanticWeb::Schema::MoveAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of arriving at a place. An agent arrives at a destination from a
fromLocation, optionally with participants.




=cut


around json_ld_type => sub { return 'ArriveAction' };

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
