use utf8;

package SemanticWeb::Schema::CriticReview;

# ABSTRACT: A [[CriticReview]] is a more specialized form of Review written or published by a source that is recognized for its reviewing activities

use Moo;

extends qw/ SemanticWeb::Schema::Review /;


use MooX::JSON_LD 'CriticReview';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v12.0.1';

=encoding utf8

=head1 DESCRIPTION

A L<SemanticWeb::Schema::CriticReview> is a more specialized form of Review written or published by a source that is recognized for its reviewing activities. These can include online columns, travel and food guides, TV and radio shows, blogs and other independent Web sites. L<SemanticWeb::Schema::CriticReview>s are typically more in-depth and professionally written. For simpler, casually written user/visitor/viewer/customer reviews, it is more appropriate to use the L<SemanticWeb::Schema::UserReview> type. Review aggregator sites such as Metacritic already separate out the site's user reviews from selected critic reviews that originate from third-party sources.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Review>

=cut

1;
