use utf8;

package SemanticWeb::Schema::dateModified;

# ABSTRACT: The date on which the CreativeWork was most recently modified or when the item's entry was modified within a DataFeed.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'dateModified';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The date on which the CreativeWork was most recently modified or when the
item's entry was modified within a DataFeed.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
