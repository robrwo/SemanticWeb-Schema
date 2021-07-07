use utf8;

package SemanticWeb::Schema::CompleteDataFeed;

# ABSTRACT: A [[CompleteDataFeed]] is a [[DataFeed]] whose standard representation includes content for every item currently in the feed

use Moo;

extends qw/ SemanticWeb::Schema::DataFeed /;


use MooX::JSON_LD 'CompleteDataFeed';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v13.0.1';

=encoding utf8

=head1 DESCRIPTION

A L<SemanticWeb::Schema::CompleteDataFeed> is a L<SemanticWeb::Schema::DataFeed> whose standard representation includes content for every item currently in the feed.

This is the equivalent of Atom's element as defined in Feed Paging and Archiving L<RFC 5005|https://tools.ietf.org/html/rfc5005>, For example (and as defined for Atom), when using data from a feed that represents a collection of items that varies over time (e.g. "Top Twenty Records") there is no need to have newer entries mixed in alongside older, obsolete entries. By marking this feed as a CompleteDataFeed, old entries can be safely discarded when the feed is refreshed, since we can assume the feed has provided descriptions for all current items.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::DataFeed>

=cut

1;
