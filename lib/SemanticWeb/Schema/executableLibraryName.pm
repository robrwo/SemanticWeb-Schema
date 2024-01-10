use utf8;

package SemanticWeb::Schema::executableLibraryName;

# ABSTRACT: Library file name, e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'executableLibraryName';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Library file name, e.g., mscorlib.dll, system.web.dll.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
