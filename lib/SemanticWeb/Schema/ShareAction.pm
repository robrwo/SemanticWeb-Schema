package SemanticWeb::Schema::ShareAction;

# ABSTRACT: The act of distributing content to people for their amusement or edification.

use Moo;

extends qw/ SemanticWeb::Schema::CommunicateAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of distributing content to people for their amusement or
edification.




=cut


around json_ld_type => sub { return 'ShareAction' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::CommunicateAction>

=cut

1;
