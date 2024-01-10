use utf8;

package SemanticWeb::Schema::usageInfo;

# ABSTRACT: The schema

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'usageInfo';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The schema.org [[usageInfo]] property indicates further information about a L<SemanticWeb::Schema::CreativeWork>. This property is applicable both to works that are freely available and to those that require payment or other transactions. It can reference additional information, e.g. community expectations on preferred linking and citation conventions, as well as purchasing details. For something that can be commercially licensed, usageInfo can provide detailed, resource-specific information about licensing options.

This property can be used alongside the license property which indicates license(s) applicable to some piece of content. The usageInfo property can provide information about other licensing options, e.g. acquiring commercial usage rights for an image that is also available under non-commercial creative commons licenses.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
