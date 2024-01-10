use utf8;

package SemanticWeb::Schema::SymptomsHealthAspect;

# ABSTRACT: Symptoms or related symptoms of a Topic.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'SymptomsHealthAspect';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Symptoms or related symptoms of a Topic.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
