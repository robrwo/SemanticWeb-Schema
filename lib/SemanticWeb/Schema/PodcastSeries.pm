use utf8;

package SemanticWeb::Schema::PodcastSeries;

# ABSTRACT: A podcast is an episodic series of digital audio or video files which a user can download and listen to.

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWorkSeries /;


use MooX::JSON_LD 'PodcastSeries';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v8.0.1';

=encoding utf8

=head1 DESCRIPTION

A podcast is an episodic series of digital audio or video files which a
user can download and listen to.




=head1 ATTRIBUTES


=head2 C<web_feed>

C<webFeed>

The URL for a feed, e.g. associated with a podcast series, blog, or series
of date-stamped updates. This is usually RSS or Atom.


A web_feed should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DataFeed']>

=item C<Str>

=back

=head2 C<_has_web_feed>

A predicate for the L</web_feed> attribute.

=cut

has web_feed => (
    is        => 'rw',
    predicate => '_has_web_feed',
    json_ld   => 'webFeed',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWorkSeries>

=cut

1;
