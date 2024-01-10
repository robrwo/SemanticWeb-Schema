use utf8;

package SemanticWeb::Schema::populationType;

# ABSTRACT: Indicates the populationType common to all members of a [[StatisticalPopulation]] or all cases within the scope of a [[StatisticalVariable]].

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'populationType';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates the populationType common to all members of a L<SemanticWeb::Schema::StatisticalPopulation> or all cases within the scope of a L<SemanticWeb::Schema::StatisticalVariable>.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
