use utf8;

package SemanticWeb::Schema::webFeed;

# ABSTRACT: The URL for a feed, e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'webFeed';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The URL for a feed, e.g. associated with a podcast series, blog, or series
of date-stamped updates. This is usually RSS or Atom.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
