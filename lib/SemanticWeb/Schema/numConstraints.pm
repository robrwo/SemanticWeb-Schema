use utf8;

package SemanticWeb::Schema::numConstraints;

# ABSTRACT: Indicates the number of constraints property values defined for a particular [[ConstraintNode]] such as [[StatisticalVariable]]

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'numConstraints';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates the number of constraints property values defined for a particular L<SemanticWeb::Schema::ConstraintNode> such as L<SemanticWeb::Schema::StatisticalVariable>. This helps applications understand if they have access to a sufficiently complete description of a L<SemanticWeb::Schema::StatisticalVariable> or other construct that is defined using properties on template-style nodes.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
