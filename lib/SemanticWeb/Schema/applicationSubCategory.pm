use utf8;

package SemanticWeb::Schema::applicationSubCategory;

# ABSTRACT: Subcategory of the application, e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'applicationSubCategory';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Subcategory of the application, e.g. 'Arcade Game'.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
