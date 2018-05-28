package SemanticWeb::Schema::ViewAction;

# ABSTRACT: The act of consuming static visual content.

use Moo;

extends qw/ SemanticWeb::Schema::ConsumeAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of consuming static visual content.




=cut


around json_ld_type => sub { return 'ViewAction' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::ConsumeAction>

=cut

1;
