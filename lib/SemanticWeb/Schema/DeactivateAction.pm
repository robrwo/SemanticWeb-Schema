package SemanticWeb::Schema::DeactivateAction;

# ABSTRACT: The act of stopping or deactivating a device or application (e

use Moo;

extends qw/ SemanticWeb::Schema::ControlAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of stopping or deactivating a device or application (e.g. stopping
a timer or turning off a flashlight).




=cut


around json_ld_type => sub { return 'DeactivateAction' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::ControlAction>

=cut

1;
