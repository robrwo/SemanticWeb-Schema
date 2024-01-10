use utf8;

package SemanticWeb::Schema::includedDataCatalog;

# ABSTRACT: A data catalog which contains this dataset (this property was previously 'catalog'

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'includedDataCatalog';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A data catalog which contains this dataset (this property was previously
'catalog', preferred name is now 'includedInDataCatalog').




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
