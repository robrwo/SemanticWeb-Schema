use utf8;

package SemanticWeb::Schema::SizeSystemEnumeration;

# ABSTRACT: Enumerates common size systems for different categories of products

use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use MooX::JSON_LD 'SizeSystemEnumeration';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v12.0.1';

=encoding utf8

=head1 DESCRIPTION

Enumerates common size systems for different categories of products, for
example "EN-13402" or "UK" for wearables or "Imperial" for screws.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
