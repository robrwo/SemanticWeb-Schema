use utf8;

package SemanticWeb::Schema::sdPublisher;

# ABSTRACT: Indicates the party responsible for generating and publishing the current structured data markup

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'sdPublisher';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates the party responsible for generating and publishing the current structured data markup, typically in cases where the structured data is derived automatically from existing published content but published on a different site. For example, student projects and open data initiatives often re-publish existing content with more explicitly structured metadata. The
[[sdPublisher]] property helps make such practices more explicit.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
