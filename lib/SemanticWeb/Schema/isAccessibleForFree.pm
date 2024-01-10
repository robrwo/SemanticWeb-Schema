use utf8;

package SemanticWeb::Schema::isAccessibleForFree;

# ABSTRACT: A flag to signal that the item

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'isAccessibleForFree';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A flag to signal that the item, event, or place is accessible for free.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
