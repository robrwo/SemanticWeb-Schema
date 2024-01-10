use utf8;

package SemanticWeb::Schema::variantCover;

# ABSTRACT: A description of the variant cover for the issue

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'variantCover';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A description of the variant cover for the issue, if the issue is a variant
printing. For example, "Bryan Hitch Variant Cover" or "2nd Printing
Variant".




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
