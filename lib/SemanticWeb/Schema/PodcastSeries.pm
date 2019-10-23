use utf8;

package SemanticWeb::Schema::PodcastSeries;

# ABSTRACT: A podcast is an episodic series of digital audio or video files which a user can download and listen to.

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWorkSeries /;


use MooX::JSON_LD 'PodcastSeries';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v4.0.2';

=encoding utf8

=head1 DESCRIPTION

A podcast is an episodic series of digital audio or video files which a
user can download and listen to.




=head1 ATTRIBUTES


=head2 C<web_feed>

C<webFeed>

The URL for the feed associated with the podcast series. This is usually
RSS or Atom.


A web_feed should be one of the following types:

=over

=item C<Str>

=back

=cut

has web_feed => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'webFeed',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWorkSeries>

=cut

1;
