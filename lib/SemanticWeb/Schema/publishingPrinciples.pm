use utf8;

package SemanticWeb::Schema::publishingPrinciples;

# ABSTRACT: The publishingPrinciples property indicates (typically via [[URL]]) a document describing the editorial principles of an [[Organization]] (or individual

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'publishingPrinciples';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The publishingPrinciples property indicates (typically via L<SemanticWeb::Schema::URL>) a document describing the editorial principles of an L<SemanticWeb::Schema::Organization> (or individual, e.g. a L<SemanticWeb::Schema::Person> writing a blog) that relate to their activities as a publisher, e.g. ethics or diversity policies. When applied to a L<SemanticWeb::Schema::CreativeWork> (e.g. L<SemanticWeb::Schema::NewsArticle>) the principles are those of the party primarily responsible for the creation of the L<SemanticWeb::Schema::CreativeWork>.

While such policies are most typically expressed in natural language, sometimes related information (e.g. indicating a [[funder]]) can be expressed using schema.org terminology.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
