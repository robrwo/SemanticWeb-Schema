package SemanticWeb::Schema::AllocateAction;

# ABSTRACT: The act of organizing tasks/objects/events by associating resources to it.

use Moo;

extends qw/ SemanticWeb::Schema::OrganizeAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of organizing tasks/objects/events by associating resources to it.




=cut


around json_ld_type => sub { return 'AllocateAction' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::OrganizeAction>

=cut

1;
