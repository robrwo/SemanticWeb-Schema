package SemanticWeb::Schema::SuspendAction;

# ABSTRACT: The act of momentarily pausing a device or application (e

use Moo;

extends qw/ SemanticWeb::Schema::ControlAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of momentarily pausing a device or application (e.g. pause music
playback or pause a timer).




=cut


around json_ld_type => sub { return 'SuspendAction' };

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
