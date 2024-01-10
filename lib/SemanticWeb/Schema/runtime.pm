use utf8;

package SemanticWeb::Schema::runtime;

# ABSTRACT: Runtime platform or script interpreter dependencies (example: Java v1

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'runtime';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Runtime platform or script interpreter dependencies (example: Java v1,
Python 2.3, .NET Framework 3.0).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
