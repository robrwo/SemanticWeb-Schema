package SemanticWeb::Schema::AssignAction;

# ABSTRACT: The act of allocating an action/event/task to some destination (someone or something).

use Moo;

extends qw/ SemanticWeb::Schema::AllocateAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of allocating an action/event/task to some destination (someone or
something).




=cut


around json_ld_type => sub { return 'AssignAction' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::AllocateAction>

=cut

1;
