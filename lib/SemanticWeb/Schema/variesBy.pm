use utf8;

package SemanticWeb::Schema::variesBy;

# ABSTRACT: Indicates the property or properties by which the variants in a [[ProductGroup]] vary

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'variesBy';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates the property or properties by which the variants in a L<SemanticWeb::Schema::ProductGroup> vary, e.g. their size, color etc. Schema.org properties can be referenced by their short name e.g. "color"; terms defined elsewhere can be referenced with their URIs.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
