use utf8;

package SemanticWeb::Schema::reviewRating;

# ABSTRACT: The rating given in this review

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'reviewRating';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The rating given in this review. Note that reviews can themselves be rated. The C<reviewRating> applies to rating given by the review. The [[aggregateRating]] property applies to the review itself, as a creative work.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
