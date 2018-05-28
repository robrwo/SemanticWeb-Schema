package SemanticWeb::Schema::CreateAction;

# ABSTRACT: The act of deliberately creating/producing/generating/building a result out of the agent.

use Moo;

extends qw/ SemanticWeb::Schema::Action /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of deliberately creating/producing/generating/building a result out
of the agent.




=cut


around json_ld_type => sub { return 'CreateAction' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Action>

=cut

1;
