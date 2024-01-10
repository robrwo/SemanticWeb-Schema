use utf8;

package SemanticWeb::Schema::assemblyVersion;

# ABSTRACT: Associated product/technology version

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'assemblyVersion';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Associated product/technology version. E.g., .NET Framework 4.5.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
