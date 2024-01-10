use utf8;

package SemanticWeb::Schema::negativeNotes;

# ABSTRACT: Provides negative considerations regarding something

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'negativeNotes';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Provides negative considerations regarding something, most typically in pro/con lists for reviews (alongside [[positiveNotes]]). For symmetry 

In the case of a L<SemanticWeb::Schema::Review>, the property describes the [[itemReviewed]] from the perspective of the review; in the case of a L<SemanticWeb::Schema::Product>, the product itself is being described. Since product descriptions 
tend to emphasise positive claims, it may be relatively unusual to find [[negativeNotes]] used in this way. Nevertheless for the sake of symmetry, [[negativeNotes]] can be used on L<SemanticWeb::Schema::Product>.

The property values can be expressed either as unstructured text (repeated as necessary), or if ordered, as a list (in which case the most negative is at the beginning of the list).



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
