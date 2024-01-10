use utf8;

package SemanticWeb::Schema::size;

# ABSTRACT: A standardized size of a product or creative work

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'size';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A standardized size of a product or creative work, specified either through a simple textual string (for example 'XL', '32Wx34L'), a  QuantitativeValue with a unitCode, or a comprehensive and structured L<SemanticWeb::Schema::SizeSpecification>; in other cases, the [[width]], [[height]], [[depth]] and [[weight]] properties may be more applicable. 



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
