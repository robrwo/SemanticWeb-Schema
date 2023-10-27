use utf8;

package SemanticWeb::Schema::AdultOrientedEnumeration;

# ABSTRACT: Enumeration of considerations that make a product relevant or potentially restricted for adults only.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use MooX::JSON_LD 'AdultOrientedEnumeration';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v23.0.0';

=encoding utf8

=head1 DESCRIPTION

Enumeration of considerations that make a product relevant or potentially
restricted for adults only.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
