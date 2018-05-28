package SemanticWeb::Schema::DeleteAction;

# ABSTRACT: The act of editing a recipient by removing one of its objects.

use Moo;

extends qw/ SemanticWeb::Schema::UpdateAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of editing a recipient by removing one of its objects.




=cut


around json_ld_type => sub { return 'DeleteAction' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::UpdateAction>

=cut

1;
