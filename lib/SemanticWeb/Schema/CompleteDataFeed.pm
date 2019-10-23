use utf8;

package SemanticWeb::Schema::CompleteDataFeed;

# ABSTRACT: A <a class="localLink" href="http://schema

use Moo;

extends qw/ SemanticWeb::Schema::DataFeed /;


use MooX::JSON_LD 'CompleteDataFeed';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v4.0.1';

=encoding utf8

=head1 DESCRIPTION

=begin html

A <a class="localLink"
href="http://schema.org/CompleteDataFeed">CompleteDataFeed</a> is a <a
class="localLink" href="http://schema.org/DataFeed">DataFeed</a> whose
standard representation includes content for every item currently in the
feed.<br/><br/> This is the equivalent of Atom's element as defined in Feed
Paging and Archiving <a href="https://tools.ietf.org/html/rfc5005">RFC
5005</a>, For example (and as defined for Atom), when using data from a
feed that represents a collection of items that varies over time (e.g. "Top
Twenty Records") there is no need to have newer entries mixed in alongside
older, obsolete entries. By marking this feed as a CompleteDataFeed, old
entries can be safely discarded when the feed is refreshed, since we can
assume the feed has provided descriptions for all current items.

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::DataFeed>

=cut

1;
