use utf8;

package SemanticWeb::Schema::positiveNotes;

# ABSTRACT: Provides positive considerations regarding something

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'positiveNotes';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Provides positive considerations regarding something, for example product highlights or (alongside [[negativeNotes]]) pro/con lists for reviews.

In the case of a L<SemanticWeb::Schema::Review>, the property describes the [[itemReviewed]] from the perspective of the review; in the case of a L<SemanticWeb::Schema::Product>, the product itself is being described.

The property values can be expressed either as unstructured text (repeated as necessary), or if ordered, as a list (in which case the most positive is at the beginning of the list).



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
