use utf8;

package SemanticWeb::Schema::HealthAspectEnumeration;

# ABSTRACT: HealthAspectEnumeration enumerates several aspects of health content online

use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use MooX::JSON_LD 'HealthAspectEnumeration';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.1.1';

=encoding utf8

=head1 DESCRIPTION

HealthAspectEnumeration enumerates several aspects of health content online, each of which might be described using [[hasHealthAspect]] and L<SemanticWeb::Schema::HealthTopicContent>.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
