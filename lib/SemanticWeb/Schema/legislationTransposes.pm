use utf8;

package SemanticWeb::Schema::legislationTransposes;

# ABSTRACT: Indicates that this legislation (or part of legislation) fulfills the objectives set by another legislation

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'legislationTransposes';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates that this legislation (or part of legislation) fulfills the
objectives set by another legislation, by passing appropriate
implementation measures. Typically, some legislations of European Union's
member states or regions transpose European Directives. This indicates a
legally binding link between the 2 legislations.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
