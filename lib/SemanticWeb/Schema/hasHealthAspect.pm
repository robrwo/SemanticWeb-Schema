use utf8;

package SemanticWeb::Schema::hasHealthAspect;

# ABSTRACT: Indicates the aspect or aspects specifically addressed in some [[HealthTopicContent]]

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'hasHealthAspect';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates the aspect or aspects specifically addressed in some L<SemanticWeb::Schema::HealthTopicContent>. For example, that the content is an overview, or that it talks about treatment, self-care, treatments or their side-effects.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
