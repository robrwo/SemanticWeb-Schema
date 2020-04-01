use utf8;

package SemanticWeb::Schema::LegalValueLevel;

# ABSTRACT: A list of possible levels for the legal validity of a legislation.

use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use MooX::JSON_LD 'LegalValueLevel';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.3';

=encoding utf8

=head1 DESCRIPTION

A list of possible levels for the legal validity of a legislation.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
