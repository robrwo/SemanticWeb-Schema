package SemanticWeb::Schema::ResumeAction;

# ABSTRACT: The act of resuming a device or application which was formerly paused (e

use Moo;

extends qw/ SemanticWeb::Schema::ControlAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of resuming a device or application which was formerly paused (e.g.
resume music playback or resume a timer).




=cut


around json_ld_type => sub { return 'ResumeAction' };

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
