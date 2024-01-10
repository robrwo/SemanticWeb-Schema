use utf8;

package SemanticWeb::Schema::legislationConsolidates;

# ABSTRACT: Indicates another legislation taken into account in this consolidated legislation (which is usually the product of an editorial process that revises the legislation)

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'legislationConsolidates';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates another legislation taken into account in this consolidated
legislation (which is usually the product of an editorial process that
revises the legislation). This property should be used multiple times to
refer to both the original version or the previous consolidated version,
and to the legislations making the change.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
