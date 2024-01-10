use utf8;

package SemanticWeb::Schema::leiCode;

# ABSTRACT: An organization identifier that uniquely identifies a legal entity as defined in ISO 17442.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'leiCode';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An organization identifier that uniquely identifies a legal entity as
defined in ISO 17442.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
