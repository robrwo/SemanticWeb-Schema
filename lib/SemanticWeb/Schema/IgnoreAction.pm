package SemanticWeb::Schema::IgnoreAction;

# ABSTRACT: The act of intentionally disregarding the object

use Moo;

extends qw/ SemanticWeb::Schema::AssessAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of intentionally disregarding the object. An agent ignores an
object.




=cut


around json_ld_type => sub { return 'IgnoreAction' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::AssessAction>

=cut

1;
