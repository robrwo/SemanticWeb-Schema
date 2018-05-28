package SemanticWeb::Schema::PlayAction;

# ABSTRACT: <p>The act of playing/exercising/training/performing for enjoyment

use Moo;

extends qw/ SemanticWeb::Schema::Action /;


use MooX::JSON_LD 'PlayAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

<p>The act of playing/exercising/training/performing for enjoyment,
leisure, recreation, Competition or exercise.</p> <p>Related actions:</p>
<ul> <li><a class="localLink"
href="http://schema.org/ListenAction">ListenAction</a>: Unlike ListenAction
(which is under ConsumeAction), PlayAction refers to performing for an
audience or at an event, rather than consuming music.</li> <li><a
class="localLink" href="http://schema.org/WatchAction">WatchAction</a>:
Unlike WatchAction (which is under ConsumeAction), PlayAction refers to
showing/displaying for an audience or at an event, rather than consuming
visual content.</li> </ul> 

=end html




=head1 ATTRIBUTES


=head2 C<audience>



An intended audience, i.e. a group for whom something was created.


A audience should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Audience']>

=back

=cut

has audience => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'audience',
    json_ld_serializer => \&_serialize_audience,
);

sub _serialize_audience { $_[0]->_serializer('audience') }


=head2 C<event>



Upcoming or past event associated with this place, organization, or action.


A event should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Event']>

=back

=cut

has event => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'event',
    json_ld_serializer => \&_serialize_event,
);

sub _serialize_event { $_[0]->_serializer('event') }




=head1 SEE ALSO



L<SemanticWeb::Schema::Action>

=cut

1;
